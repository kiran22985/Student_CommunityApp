const express = require('express');
const professionalModel = require('../models/professional');
const bcryptjs = require('bcryptjs');
const jwt = require('jsonwebtoken');
const proRouter = express.Router();

//SIGN UP
proRouter.post("/proregister", async (req, res) => {
  try {
    const { fullName, phone, email, address, password, profession1, time1, charge1, description } = req.body;

    const existingUser = await professionalModel.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let user = new professionalModel({
      fullName,
      phone,
      email,
      address,
      password: hashedPassword,
      profession1,
      time1,
      charge1,
      description

    });
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
// Sign In Route

proRouter.post("/prologin", async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await professionalModel.findOne({ email });
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist!" });
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Incorrect password." });
    }

    const token = jwt.sign({ id: user._id }, "passwordKey");
    res.json({ token, ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

proRouter.post("/tokenIsValid", async (req, res) => {
  try {
    const token = req.header("x-auth-token");
    if (!token) return res.json(false);
    const verified = jwt.verify(token, "passwordKey");
    if (!verified) return res.json(false);

    const user = await professionalModel.findById(verified.id);
    if (!user) return res.json(false);
    res.json(true);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = proRouter;

