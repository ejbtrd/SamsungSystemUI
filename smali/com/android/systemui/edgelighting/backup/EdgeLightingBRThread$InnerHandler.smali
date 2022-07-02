.class Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;
.super Landroid/os/Handler;
.source "EdgeLightingBRThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# instance fields
.field private final mThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 221
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;->mThread:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 226
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;->mThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    :cond_1
    :goto_0
    return-void
.end method
