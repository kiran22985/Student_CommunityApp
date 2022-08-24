//Imports packages here
const express=require('express');

//database connection
const mongoose=require('mongoose');
mongoose.connect('mongodb://localhost:27017/Mistri_app');
//=============
const app=express();
const authRouter=require('./routes/auth');
const adminRouter=require('./routes/admin'); 
const productRouter = require('./routes/service');
const userRouter=require('./routes/user');
const proRouter = require('./routes/professionalroute');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);
app.use(proRouter);




const PORT=3000;

app.listen(PORT,"0.0.0.0", ()=>{
    console.log(`connected to port ${PORT}`);
});