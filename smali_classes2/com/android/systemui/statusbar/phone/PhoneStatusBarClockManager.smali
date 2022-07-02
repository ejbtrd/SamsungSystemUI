.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;
.super Ljava/lang/Object;
.source "PhoneStatusBarClockManager.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mClockBlocked:Z

.field private mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field private mClockView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGrandParentView:Landroid/view/ViewGroup;

.field private mIsChangedClockPosition:Z

.field private mLeftContainer:Landroid/view/ViewGroup;

.field private mMiddleContainer:Landroid/view/ViewGroup;

.field private mRightContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method private addClockView(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private makeClockView()Landroid/widget/TextView;
    .locals 4

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockHomeIndicatorView;-><init>(Landroid/content/Context;)V

    .line 154
    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_clock_tag_home_indicator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 156
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$style;->IndicatorClock:I

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 p0, 0x10

    .line 159
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const p0, -0x12000001

    .line 161
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-object v0
.end method

.method private removeClockView(Landroid/view/ViewGroup;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 p0, 0x8

    .line 141
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getClockPosition()Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-object p0
.end method

.method public getClockView()Landroid/view/View;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getClockWidth()I
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/systemui/statusbar/policy/QSClock;

    if-eqz v0, :cond_0

    .line 178
    check-cast p0, Lcom/android/systemui/statusbar/policy/QSClock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTextMeasuredWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 86
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "[QuickStar]PhoneStatusBarClockManager"

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 88
    sget v1, Lcom/android/systemui/R$id;->left_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->middle_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->right_clock_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "onAttachedToWindow(), mGrandParentView is null"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 100
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "[QuickStar]PhoneStatusBarClockManager"

    invoke-interface {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 6

    .line 59
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLeftClockPosition()Z

    move-result v1

    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isMiddleClockPosition()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v4}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isRightClockPosition()Z

    move-result v4

    .line 63
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v5, "clock"

    invoke-interface {v0, v5}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateQuickStarStyle() left:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", middle:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", right:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mClockBlocked:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockBlocked:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "[QuickStar]PhoneStatusBarClockManager"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-eqz v1, :cond_1

    .line 67
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 69
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    goto :goto_1

    .line 73
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-eq v0, v1, :cond_4

    .line 76
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    :cond_4
    return-void
.end method

.method public updateResources()V
    .locals 4

    .line 105
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateResources() mGrandParentView is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsChangedClockPosition:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mClockPosition:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockPosition()Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[QuickStar]PhoneStatusBarClockManager"

    .line 106
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->removeClockView(Landroid/view/ViewGroup;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->removeClockView(Landroid/view/ViewGroup;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->removeClockView(Landroid/view/ViewGroup;)V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->makeClockView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockView:Landroid/widget/TextView;

    .line 117
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$1;->$SwitchMap$com$android$systemui$statusbar$phone$PhoneStatusBarClockManager$POSITION:[I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockPosition()Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->addClockView(Landroid/view/ViewGroup;)V

    .line 132
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 134
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIsChangedClockPosition:Z

    :cond_5
    :goto_2
    return-void
.end method
