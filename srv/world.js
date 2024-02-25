module.exports = (say) => {
    say.on ('hellofunction', req => `${req.data.input1} Champ !`)
}