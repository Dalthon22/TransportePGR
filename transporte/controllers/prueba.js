const conex=require('../conex/conex');
module.exports={
    index:async (req,res,next)=>{
        rs=await conex.raw('select rand()*10')
        console.log(rs);
        console.log('controlador')
    }
}
