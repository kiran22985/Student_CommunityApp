const express = require("express");
const productRouter = express.Router();
const auth = require("../middlewares/auth");
const {Service } = require("../models/service");

productRouter.get("/api/products/", async (req, res) => {
  try {
    const products = await Service.find({ category: req.query.category });
    res.json(products);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// create a get request to search products and get them
// /api/products/search/i
productRouter.get("/api/services/search/:name", auth, async (req, res) => {
    try {
      const products = await Service.find({
        name: { $regex: req.params.name, $options: "i" },
      });
  
      res.json(products);
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  });

module.exports=productRouter;