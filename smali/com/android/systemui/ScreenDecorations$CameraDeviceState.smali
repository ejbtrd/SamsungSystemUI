.class public Lcom/android/systemui/ScreenDecorations$CameraDeviceState;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraDeviceState"
.end annotation


# instance fields
.field private cameraState:I

.field private facing:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    iput p1, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->facing:I

    .line 1248
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->cameraState:I

    return-void
.end method

.method public static cameraStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "CAMERA_STATE_CLOSED"

    return-object p0

    :cond_1
    const-string p0, "CAMERA_STATE_IDLE"

    return-object p0

    :cond_2
    const-string p0, "CAMERA_STATE_ACTIVE"

    return-object p0

    :cond_3
    const-string p0, "CAMERA_STATE_OPEN"

    return-object p0
.end method


# virtual methods
.method public getCameraState()I
    .locals 0

    .line 1260
    iget p0, p0, Lcom/android/systemui/ScreenDecorations$CameraDeviceState;->cameraState:I

    return p0
.end method
