import expres from 'express'
import cors from 'cors'
const PORT = process.env.PORT || 3000


const app = expres()
app.use(cors())

app.get('/', (req, res)  => {
    res.send('hello Docker 🛥️')
})
app.get('/test', (req, res)  => {
    res.send('The test is working')
})

app.listen(PORT, () => {
    console.log(`listening on http://localhost:${PORT}...`)
} )