.class Lcom/android/systemui/cover/CoverScreenManager$2;
.super Landroid/os/Handler;
.source "CoverScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/CoverScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;Landroid/os/Looper;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 180
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$1100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/android/systemui/cover/CoverWindowDelegate;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 199
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0}, Lcom/android/systemui/cover/CoverScreenManager;->access$1100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/android/systemui/cover/CoverWindowDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverWindowDelegate;->maximize()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 194
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$1000(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 182
    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$700(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$800(Lcom/android/systemui/cover/CoverScreenManager;)V

    .line 187
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$700(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_4

    .line 188
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$2;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0}, Lcom/android/systemui/cover/CoverScreenManager;->access$900(Lcom/android/systemui/cover/CoverScreenManager;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method
