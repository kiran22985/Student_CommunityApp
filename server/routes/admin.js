const express = require("express");
const adminRouter = express.Router();
const admin = require("../middlewares/admin");
const { Service } = require("../models/service");
//const Order = require("../models/order");
const { PromiseProvider } = require("mongoose");

// Add product
adminRouter.post("/admin/add-service",  async (req, res) => {
  try {
    const { name, description, images, time, price, category } = req.body;
    let service = new Service({
      name,
      description,
      images,
      time,
      price,
      category,
    });
    service = await service.save();
    res.json(service);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
// Get all your products
adminRouter.get("/admin/get-services", async (req, res) => {
    try {
      const services = await Service.find({});
      res.json(services);
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  });

// Delete the product
adminRouter.post("/admin/delete-service", async (req, res) => {
    try {
      const { id } = req.body;
      let service= await Service.findByIdAndDelete(id);
      res.json(service);
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  });
module.exports = adminRouter;