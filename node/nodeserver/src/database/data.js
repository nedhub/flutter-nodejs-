import mongodb from "mongodb";
import dotenv from "dotenv";



dotenv.config()



export const mongoDBConnection = 
async () =>
mongodb.connect(

    process.env.MONGODB_URL 
    

    async (error, client) => {


        if(error) throw error;
        console.log("DB Connected"
        );
        const database = client.db();
        const collection = database.collection("todo");


    let dataFromMongo =  await collection.find().toArray();
    console.log(dataFromMongo);

    }

);