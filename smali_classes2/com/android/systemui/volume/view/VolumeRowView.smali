.class public Lcom/android/systemui/volume/view/VolumeRowView;
.super Landroid/widget/FrameLayout;
.source "VolumeRowView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mBluetoothDeviceIcon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEarProtectLevel:I

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

.field private mIconClickable:Z

.field private mIsDualViewEnabled:Z

.field private mLabel:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mRecheckCallback:Ljava/lang/Runnable;

.field private mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

.field private mSmartViewToast:Landroid/widget/Toast;

.field private mStartProgress:Z

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStream:I

.field private mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTouchDownIcon:Z

.field private mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public static synthetic $r8$lambda$118UXXHVKEpjHpVT4Ba-Vvk_D70(Lcom/android/systemui/volume/view/VolumeRowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6RsCqTtPc7OidWU9ltX9r9s0Uj8(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$showSmartViewTouchToast$11(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8Nyp9FzGyHvGJOEd2uAaqdP0Tvk(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZBlM8qJkRNa3oXRdSLB0GQfevI(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateEnableState$7(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$B6wCKFKRy1ud5OwacOFB_SVnjbo(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateContentDescription$13(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EG__1ZoM_XUaqSlQI3WSyO8TffU(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateProgress$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EPQ-gd7nIdeJKcrgJXnt0q7s6yg(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateDualColorSeekBar$10(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NZp3uz_EUo8sbmMqQ60dwkprpHw(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateContentDescription$14(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ptt3mbpbN5ktk56TuwyJOt0H2Nw(Lcom/android/systemui/volume/view/VolumeRowView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$setProgress$9(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$TOwRL_4jrkKGAny-Ek0xpEwp9F4(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateEnableState$8(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X109ZUonEc1BPQ9gqvYPgCWAQyQ(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateBluetoothDeviceIcon$16(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xw9mP4S1GwpVxBd1dlIJZqf_QaQ(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$isVisibleRow$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YZdV3Rh0bHaiEboDSu_m8s890m8(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$isVisibleRow$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dNmuvgY1ijqNtzljYjxtHMICWys(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$dispatch$2(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fd____MejMcVdSoL5zagtny9YXc(Lcom/android/systemui/volume/view/VolumeRowView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnrbhO5S6oUIWW0HgEQGhnMyPUA(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$showSmartViewTouchToast$12(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y09Q7XC-VDql4yLYJXy_PyHqFQU(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateBluetoothDeviceIcon$15(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zTgmExZmXqEMaV9DiwcNfCWXIdU(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->lambda$updateProgress$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    .line 58
    new-instance p1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    .line 58
    new-instance p2, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkRemoteMicLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 509
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v0, v1, :cond_0

    .line 511
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne p1, v0, :cond_1

    .line 513
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 514
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_0
    return-object p3
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 406
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getProgress(I)I
    .locals 1

    .line 340
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-eq p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    :cond_0
    return p1
.end method

.method private getStreamCommonLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;
    .locals 4

    .line 500
    :try_start_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 505
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/volume/view/VolumeRowView;->checkRemoteMicLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;
    .locals 3

    .line 478
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    .line 479
    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne v0, v1, :cond_0

    .line 480
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 486
    :cond_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v1

    .line 487
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 491
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->getStreamCommonLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->setDeviceLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEnableTouchAnimation(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIsDualViewEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 293
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIconClicked(FF)Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStartProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchDownIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconClickable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->isTouched(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTouched(Landroid/view/View;FF)Z
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 446
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 447
    aget v1, p0, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    aget p2, p0, v2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    aget p0, p0, v2

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private isVisibleRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 1

    .line 297
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 298
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda9;

    .line 299
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 300
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dispatch$2(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 202
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 203
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 2

    .line 126
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 127
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 128
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$isVisibleRow$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 298
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isVisibleRow$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/Boolean;
    .locals 1

    .line 299
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 58
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 60
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$setProgress$9(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private static synthetic lambda$showSmartViewTouchToast$11(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showSmartViewTouchToast$12(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 1

    .line 394
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$updateBluetoothDeviceIcon$15(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 538
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateBluetoothDeviceIcon$16(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 539
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method private synthetic lambda$updateContentDescription$13(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 453
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateContentDescription$14(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 454
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method private synthetic lambda$updateDualColorSeekBar$10(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 376
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateEnableState$7(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 311
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateEnableState$8(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 312
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$updateProgress$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 305
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateProgress$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method private setDeviceLabel(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 522
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 523
    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p1, p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p1, p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-eq p1, p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-eq p1, p0, :cond_0

    sget p0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, p0, :cond_1

    .line 526
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method private setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 349
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumeRowView;->getProgress(I)I

    move-result v0

    .line 350
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 352
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 353
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 354
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 355
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 356
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 357
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 358
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 359
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 365
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    .line 368
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 370
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private showSmartViewTouchToast(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSmartViewToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda17;

    .line 392
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda10;

    .line 393
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 398
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_use_your_tablet_volume_smart_view:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->volume_use_your_phone_volume_smart_view:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSmartViewToast:Landroid/widget/Toast;

    .line 401
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSmartViewToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 543
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 546
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->DUAL_BT_DEVICE_ADDRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    .line 547
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 550
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mBluetoothDeviceIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mBluetoothDeviceIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mBluetoothDeviceIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 537
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 538
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 539
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 458
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 460
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    .line 462
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_sound:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 463
    :cond_0
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_vib:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_mute:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 468
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 469
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 472
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_mute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabel:Ljava/lang/String;

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 470
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_unmute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabel:Ljava/lang/String;

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 474
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 452
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 453
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 454
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDualColorSeekBar(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 375
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 376
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 377
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 381
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    .line 382
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mEarProtectLevel:I

    if-eq p1, v0, :cond_0

    .line 383
    iput p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mEarProtectLevel:I

    .line 384
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setDualColorMode(I)V

    :cond_0
    return-void
.end method

.method private updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 310
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 311
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 312
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 304
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 305
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 306
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRowLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 9

    .line 147
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    sget v1, Lcom/android/systemui/R$id;->volume_seekbar_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 148
    sget v2, Lcom/android/systemui/R$id;->volume_seekbar_background:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 150
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_6

    .line 151
    iget-boolean v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIsDualViewEnabled:Z

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 169
    :cond_0
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v3

    .line 170
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    .line 171
    sget v6, Lcom/android/systemui/R$id;->volume_panel_status_icon:I

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 172
    iget-object v7, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$color;->volume_panel_status_message_color:I

    invoke-virtual {v7, v8, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/view/VolumeRowView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    .line 173
    :cond_2
    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->volume_seekbar_drawable:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 178
    sget p1, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_reduce_transparency:I

    goto :goto_2

    .line 179
    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p1, :cond_4

    goto :goto_1

    .line 182
    :cond_4
    sget p1, Lcom/android/systemui/R$drawable;->volume_seekbar_bg:I

    goto :goto_2

    .line 180
    :cond_5
    :goto_1
    sget p1, Lcom/android/systemui/R$drawable;->volume_seekbar_bg_blur:I

    .line 184
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->volume_seekbar_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->volume_seekbar_elevation_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 187
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->volume_seekbar_elevation_padding_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 188
    invoke-virtual {v1, p1, p1, p1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_6

    .line 152
    :cond_6
    :goto_3
    sget p1, Lcom/android/systemui/R$id;->volume_icon_area:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 154
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/systemui/R$dimen;->volume_panel_icon_margin_bottom_expanded:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 156
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 157
    sget p1, Lcom/android/systemui/R$drawable;->volume_seekbar_drawable_expand_reduce_transparency:I

    goto :goto_5

    .line 158
    :cond_7
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p1, :cond_9

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p1, :cond_8

    goto :goto_4

    .line 161
    :cond_8
    sget p1, Lcom/android/systemui/R$drawable;->volume_seekbar_drawable_expand:I

    goto :goto_5

    .line 159
    :cond_9
    :goto_4
    sget p1, Lcom/android/systemui/R$drawable;->volume_seekbar_drawable_expand_blur:I

    .line 163
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 165
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 166
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 167
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 201
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 208
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 45
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 428
    invoke-virtual {v0, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 429
    invoke-virtual {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 432
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchDownIcon:Z

    .line 433
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStartProgress:Z

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/volume/view/VolumeRowView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchDownIcon:Z

    goto :goto_0

    .line 416
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne v0, v3, :cond_4

    .line 417
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 418
    invoke-virtual {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 419
    invoke-virtual {v0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 437
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispose()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 324
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 328
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 329
    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 332
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->dispose()V

    :cond_2
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V
    .locals 3

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 91
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 92
    iput-object p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 94
    sget p2, Lcom/android/systemui/R$id;->volume_seekbar:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/VolumeSeekBar;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 95
    iget-object p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    invoke-virtual {p2, p5, p1, v0}, Lcom/android/systemui/volume/view/VolumeSeekBar;->initialize(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;I)V

    .line 97
    sget p2, Lcom/android/systemui/R$id;->volume_button:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/VolumeIcon;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    .line 98
    iget-object p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p2, p1, p4, p3, p5}, Lcom/android/systemui/volume/view/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    .line 100
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_MULTI_SOUND_BT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 101
    invoke-virtual {p4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    .line 102
    invoke-virtual {p4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne p1, v0, :cond_1

    :goto_0
    move p1, p5

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIsDualViewEnabled:Z

    .line 104
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    .line 105
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 106
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne v1, v2, :cond_2

    move v1, p5

    goto :goto_2

    :cond_2
    move v1, p2

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    mul-int/lit8 p1, p1, 0x64

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    mul-int/lit8 v0, v0, 0x64

    .line 110
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 113
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->getProgress(I)I

    move-result p1

    invoke-virtual {v0, p1, p5}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 116
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    .line 119
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconClickable:Z

    .line 121
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabel:Ljava/lang/String;

    .line 122
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 123
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-ne p1, v0, :cond_5

    .line 124
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_5

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    new-instance v0, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mIconClickable:Z

    if-eqz v0, :cond_6

    move p2, p5

    :cond_6
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 133
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    :cond_7
    sget p1, Lcom/android/systemui/R$id;->volume_panel_bluetooth_device_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mBluetoothDeviceIcon:Landroid/widget/ImageView;

    .line 137
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p5, Lcom/android/systemui/R$color;->volume_panel_bluetooth_device_icon_color:I

    const/4 v0, 0x0

    invoke-virtual {p2, p5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumeRowView;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 138
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 140
    invoke-direct {p0, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->updateRowLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 143
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 5

    .line 215
    sget-object v0, Lcom/android/systemui/volume/view/VolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 278
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->showSmartViewTouchToast(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_0

    .line 271
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isEnableTouchAnimation(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto/16 :goto_0

    .line 265
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isEnableTouchAnimation(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0, p0, v3}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V

    goto/16 :goto_0

    .line 259
    :pswitch_3
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    if-ne p1, v0, :cond_0

    .line 260
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStartProgress:Z

    goto/16 :goto_0

    .line 255
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->dispose()V

    goto/16 :goto_0

    .line 243
    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 244
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 245
    invoke-virtual {p1, v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 246
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 250
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 236
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 238
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 230
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 231
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_0

    .line 217
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->isVisibleRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateDualColorSeekBar(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 222
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mStream:I

    .line 223
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 224
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeRowView;->dispose()V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
