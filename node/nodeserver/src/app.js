import express,{Request,Response} from "express"
import { router } from "./routes/app"
// import  mongoose  from "mongoose";
// import data from './models/data.js';
const data = require('./models/data.js');
// import { mongoDBConnection } from "./database/data";

//express app
const app = express();

// hqomDz7Y9EvYZ8lw
//connect to mongo

const dbURI = "mongodb+srv://nedhub:02rcsUTRja7z06ag@cluster0.baijv.mongodb.net/myFirstDatabase?retryWrites=true&w=majority"
mongoose.connect(dbURI, {useNewUrlParser: true, useUnifiedTopology: true})
.then((result) => console.log("connected to db"))
.catch((err) => console.log(err));




app.use("/", router);




app.listen(8000, () => {
    console.log("Server works")
});


app.get('/add-stuff', (req, res) => {

    const constant = new data({
        name: "fhhdhs",
        email: "djdjhd@gmfjhhf.com",
        class: "10",
    });


    constant.save()

})


