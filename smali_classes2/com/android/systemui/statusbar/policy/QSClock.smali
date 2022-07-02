.class public abstract Lcom/android/systemui/statusbar/policy/QSClock;
.super Landroid/widget/TextView;
.source "QSClock.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mClockVisibleByPolicy:Z

.field protected mNonAdaptedColor:I

.field protected mViewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/QSClock;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QSClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    const-string p1, "QSClock"

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mNonAdaptedColor:I

    return-void
.end method


# virtual methods
.method protected calculateVisibility()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    return p0
.end method

.method public disable(IIIZ)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 108
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-eq p1, p2, :cond_2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClock;->setClockVisibilityByPolicy(Z)V

    :cond_2
    return-void
.end method

.method public getTextMeasuredWidth()I
    .locals 3

    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    return-object p0
.end method

.method public notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->getTimeContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 64
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mViewTag:Ljava/lang/String;

    .line 68
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QSClock;->mClockVisibleByPolicy:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->updateClockVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->calculateVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected final updateClockVisibility()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->calculateVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClock;->setVisibility(I)V

    return-void
.end method
