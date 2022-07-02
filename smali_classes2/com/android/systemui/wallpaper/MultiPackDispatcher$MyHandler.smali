.class Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;
.super Landroid/os/Handler;
.source "MultiPackDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/MultiPackDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Lcom/android/systemui/wallpaper/MultiPackDispatcher$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v1, "screen"

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "wallpaper_path"

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$000(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$100(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {v2, v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$200(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 125
    invoke-static {}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleMessage: NOT A CASE!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 106
    invoke-static {}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$404()I

    move-result v1

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$504()I

    move-result v1

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_4

    .line 111
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 112
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 113
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->what:I

    .line 114
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-wide/16 v2, 0x2bc

    .line 116
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$300(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 119
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$300(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;->onMultipackApplied(I)V

    goto :goto_1

    .line 98
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$300(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 99
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;->this$0:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->access$300(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;->onMultipackApplied(I)V

    :cond_6
    :goto_1
    return-void
.end method
