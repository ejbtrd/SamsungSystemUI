.class public Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;
.super Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.source "CarrierPlmnHomeInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/CarrierInformationNotiInterface;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private mCurrentPlmnText:Ljava/lang/String;

.field private mHandler:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

.field private mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

.field private mPlmnView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$NirZjRZXpYl97RxSRjn0ykZa9nA(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->lambda$updateCarrierPlmnText$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    const-string/jumbo p1, "not yet"

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mCurrentPlmnText:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    .line 112
    new-instance p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHandler:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

    return-void
.end method

.method private findAndDetachCarrierInformationView(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 256
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 258
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CarrierPlmnHomeInflater"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object p0

    .line 351
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object p0
.end method

.method private synthetic lambda$updateCarrierPlmnText$0(Ljava/lang/String;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updatePlmnByNotiIcon()V

    return-void
.end method

.method private printDebugLogLine(Ljava/lang/String;)V
    .locals 1

    .line 411
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " prvText:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mCurrentPlmnText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Model-NULL"

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", VIEW:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierPlmnHomeInflater"

    .line 412
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setPlmnVisibility()V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility(Z)V

    return-void
.end method

.method private setPlmnVisibility(Z)V
    .locals 3

    .line 297
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 300
    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 302
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 311
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    xor-int/2addr p1, v0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->setVisibilityForObstacles(ZLandroid/view/View;)V

    goto :goto_2

    :cond_2
    const-string p0, "CarrierPlmnHomeInflater"

    const-string p1, "mPlmnView is null"

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateTextSize()V
    .locals 3

    .line 269
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v1, :cond_1

    .line 270
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getPixelSize(I)I

    move-result v1

    .line 272
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    int-to-float v1, v1

    .line 275
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const/4 v0, 0x0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachCarrierInformationView()V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->findAndDetachCarrierInformationView(Landroid/view/ViewGroup;)V

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 137
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 138
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const-string v2, "CarrierPlmnHomeInflater"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_left_clock_end_padding:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updateTextSize()V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updatePlmnByNotiIcon()V

    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setCarrierPlmnInterface(Lcom/android/systemui/statusbar/phone/CarrierInformationNotiInterface;)V

    .line 171
    :cond_2
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v0, v2, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    return-void
.end method

.method protected detachCarrierInformationView()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->findAndDetachCarrierInformationView(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setCarrierPlmnInterface(Lcom/android/systemui/statusbar/phone/CarrierInformationNotiInterface;)V

    .line 209
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 219
    :cond_1
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "CarrierPlmnHomeInflater"

    invoke-interface {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public getInfoTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierPlmnHomeInflater"

    return-object p0
.end method

.method protected getNeedToBeGoneContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isAttached()Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToAttachView()Z
    .locals 3

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mOperatorInfraMediator:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;

    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->NEED_TO_APPLY_CONFIG_RULE_FOR_SHOW_PLMN:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-interface {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updateTextSize()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 284
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 285
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 286
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 288
    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    :goto_0
    return-void
.end method

.method public updateCarrierInformationVisibility(Z)V
    .locals 0

    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCarrierPlmnText(newText:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->printDebugLogLine(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mCurrentPlmnText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mCurrentPlmnText:Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updatePlmnByNotiIcon()V
    .locals 0

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility()V

    return-void
.end method

.method protected updateScaleCarrierInformationView()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updateTextSize()V

    return-void
.end method
