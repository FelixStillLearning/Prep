from fastapi import APIRouter, WebSocket, WebSocketDisconnect
from app.core.ws_manager import ConnectionManager

router = APIRouter(tags=["websocket"])
manager = ConnectionManager()

@router.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket):
    await manager.connect(websocket)
    try:
        # kirim pesan awal
        await websocket.send_json({"type": "connected", "message": "WebSocket connected"})

        while True:
            # tunggu pesan dari client (optional)
            data = await websocket.receive_text()
            # echo balik (biar gampang ngetes)
            await websocket.send_json({"type": "echo", "message": data})

    except WebSocketDisconnect:
        manager.disconnect(websocket)
