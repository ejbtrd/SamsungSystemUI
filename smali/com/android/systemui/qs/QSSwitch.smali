.class public Lcom/android/systemui/qs/QSSwitch;
.super Landroid/widget/Switch;
.source "QSSwitch.java"


# instance fields
.field private mIsCheckedWhenTouchDown:Z

.field private mIsClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSwitch;->mIsCheckedWhenTouchDown:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    .line 37
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    .line 42
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSSwitch;->mIsCheckedWhenTouchDown:Z

    if-eq v1, p1, :cond_2

    .line 43
    invoke-virtual {p0}, Landroid/widget/Switch;->callOnClick()Z

    :cond_2
    return v0
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    .line 27
    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    move-result p0

    return p0
.end method
