.class Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;
.super Ljava/lang/Object;
.source "SubscreenNotificationTemplate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mInitX:F

.field mInitY:F

.field mIsClicked:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mIsClicked:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mInitX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mInitY:F

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    :cond_3
    const-string p1, "S.S.N."

    const-string p2, "OUT OF TOUCH SLOP "

    .line 198
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mIsClicked:Z

    goto :goto_0

    .line 203
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mIsClicked:Z

    if-eqz p1, :cond_6

    .line 204
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 207
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->performClick()V

    .line 209
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mIsClicked:Z

    const/4 p1, 0x0

    .line 210
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mInitY:F

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mInitX:F

    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mInitX:F

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mInitY:F

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$2;->mIsClicked:Z

    :cond_6
    :goto_0
    return v0
.end method
