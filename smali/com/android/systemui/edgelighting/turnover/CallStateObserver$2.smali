.class Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;
.super Landroid/telephony/PhoneStateListener;
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

    .line 62
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->access$100(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->access$200(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->access$200(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;->this$0:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->access$102(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;I)I

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method
