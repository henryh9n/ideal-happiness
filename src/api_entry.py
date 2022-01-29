from aiohttp import web


async def handle(request):
    text = "Hello World!"
    return web.Response(text=text)


def create_application() -> web.Application:
    app_ = web.Application()
    app_.add_routes([web.get('/', handle)])
    return app_


app = create_application()
