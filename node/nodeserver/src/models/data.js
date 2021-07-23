import  mongoose from "mongoose";


const Schema = mongoose.Schema;



const schema = new Schema({
    name: String,
    email: String,
    class: String,
});


const Start = mongoose.model("todo", schema );



module.exports = data;