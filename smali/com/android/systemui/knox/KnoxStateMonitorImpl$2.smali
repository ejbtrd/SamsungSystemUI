.class Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;
.super Landroid/os/Handler;
.source "KnoxStateMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/knox/KnoxStateMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Landroid/os/Looper;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string p0, "KnoxStateMonitorImpl"

    const-string p1, "ignore message"

    .line 306
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2700(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 264
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1400(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 300
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2600(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Z)V

    goto/16 :goto_0

    .line 297
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2500(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 294
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2400(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 291
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2300(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 288
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2200(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 285
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2100(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 282
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$2000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 279
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1900(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 276
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1800(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 273
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1700(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 270
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1600(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto/16 :goto_0

    .line 267
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1500(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 261
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1300(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 258
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1200(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 255
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1100(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 252
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$1000(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 249
    :pswitch_13
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$900(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 246
    :pswitch_14
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$800(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 243
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$700(Lcom/android/systemui/knox/KnoxStateMonitorImpl;I)V

    goto :goto_0

    .line 240
    :pswitch_16
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$600(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 237
    :pswitch_17
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$500(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 234
    :pswitch_18
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$400(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V

    goto :goto_0

    .line 231
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$300(Lcom/android/systemui/knox/KnoxStateMonitorImpl;I)V

    goto :goto_0

    .line 228
    :pswitch_1a
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->access$200(Lcom/android/systemui/knox/KnoxStateMonitorImpl;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x138a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
