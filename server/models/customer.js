const mongoose=require('mongoose');
const { serviceSchema } = require("./service");
const customerSchema=new mongoose.Schema({
    fullName:{
        type:String,
        required:true,
        
    },
    phone:{
        type:String,
        required:true,
        
    },
    email:{
        type:String,
        required:true,
        validate: {
            validator: (value) => {
              const re =
                /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
              return value.match(re);
            },
            message: "Please enter a valid email address",
          },
    },
    address:{
        type:String,
        required:true,
        
    },
    type: {
        type: String,
        default: "user",
      },
    password:{
        type:String,
        required:true,
        // validate: {
        //     validator: (value) => {
              
                
        //       return value.length>6;
        //     },
        //     message: "Please enter a long password",
        //   },
        
    },
    cart: [
      {
        service: serviceSchema,
        // quantity: {
        //   type: Number,
        //   required: true,
        // },
      },
    ],
});

const custModel=mongoose.model('customers',customerSchema);
module.exports=custModel;