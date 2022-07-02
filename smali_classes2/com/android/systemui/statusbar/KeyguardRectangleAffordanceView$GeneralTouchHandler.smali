.class Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;
.super Ljava/lang/Object;
.source "KeyguardRectangleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$TouchHandlePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$1;)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "KeyguardRectangleAffordanceView"

    if-eq v0, v1, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouchEvent: mRight="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2902(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 1058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1140
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto/16 :goto_1

    .line 1084
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 1087
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->userActivity()V

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1090
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;FF)V

    goto/16 :goto_1

    .line 1094
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 1098
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2902(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;FF)V

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, 0x2

    mul-long/2addr v4, v7

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    goto :goto_0

    .line 1104
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4402(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1108
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)V

    .line 1115
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4102(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)Z

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTouchEvent: mJustClicked="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mIsShortcutLaunching="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    .line 1119
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mIsUp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2900(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mFling="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsDown = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1118
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1124
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1126
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4400(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2900(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1127
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$2000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1128
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->mFling:Z

    if-nez v0, :cond_b

    .line 1129
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1130
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4600(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1131
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    goto :goto_1

    .line 1066
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;FF)V

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3100(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Z)V

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3400(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$1700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3500(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1074
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3600(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3700(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1075
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3800(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;F)V

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    .line 1077
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageScale(FZ)V

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$3900(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;)V

    .line 1080
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->access$4000(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/view/MotionEvent;)V

    :cond_b
    :goto_1
    return v6
.end method
