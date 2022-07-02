.class Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;
.super Ljava/lang/Object;
.source "SecNotificationInfo.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 534
    sget p1, Lcom/android/systemui/R$id;->channel_radio_alert:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 536
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 537
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 538
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 539
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 540
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$702(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Z)Z

    .line 541
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)I

    goto/16 :goto_0

    .line 542
    :cond_0
    sget p1, Lcom/android/systemui/R$id;->channel_radio_silent:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p2, p1, :cond_1

    .line 543
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 544
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 546
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 547
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 548
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$702(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Z)Z

    .line 549
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)I

    goto/16 :goto_0

    .line 550
    :cond_1
    sget p1, Lcom/android/systemui/R$id;->channel_radio_off:I

    if-ne p2, p1, :cond_2

    .line 551
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 552
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 553
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 555
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 556
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$702(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Z)Z

    .line 557
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)I

    goto :goto_0

    .line 558
    :cond_2
    sget p1, Lcom/android/systemui/R$id;->channel_radio_automaitc:I

    if-ne p2, p1, :cond_3

    .line 559
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 560
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 561
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 562
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$100(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 563
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$702(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Z)Z

    .line 564
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)I

    .line 566
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$800(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->access$900(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)V

    return-void
.end method
