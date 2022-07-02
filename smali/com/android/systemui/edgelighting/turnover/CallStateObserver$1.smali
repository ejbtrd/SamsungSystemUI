.class Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;
.super Landroid/os/Handler;
.source "CallStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/turnover/CallStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->access$000(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->access$000(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;->onCallStateChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method
