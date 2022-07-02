.class Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;
.super Landroid/os/Handler;
.source "SecQSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    .line 440
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 446
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;->this$0:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    :cond_0
    return-void
.end method
