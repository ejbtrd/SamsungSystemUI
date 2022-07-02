.class public Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;
.super Landroid/widget/FrameLayout;
.source "SubLargeDisplayVolumeRowView.java"

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

.field private final mContext:Landroid/content/Context;

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

.field private mIconClickable:Z

.field private mIsDualViewEnabled:Z

.field private mLabelTextView:Landroid/widget/TextView;

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

.field private final mResources:Landroid/content/res/Resources;

.field private mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

.field private mStartProgress:Z

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStream:I

.field private mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTouchDownIcon:Z

.field private mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public static synthetic $r8$lambda$0V8NUEbmhF02nLtwOPI5kHaAPGM(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$updateProgress$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Q5_PLC7mup8SXsz8urd6Rpn8m8(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$setProgress$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9JYAO3MO-2ft1YzBp66Ut4W0NAI(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$updateProgress$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OcBEmemhXq_5RH9gCYtNcVWY-NQ(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$updateContentDescription$8(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QRk1B0i8INRw9I5DHjscx4F7ur4(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$updateLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VcjO5YRd0b5qfvpgfQA20y6BELY(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$dispatch$2(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0rUifAcZTf_4W3-KoSXJxOnoUg(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$iFPprLicE_QHLkq-AXRvY5T5Zm0(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$updateLabel$4(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcoQ0NIEnlVarQ-7Zmieu6EfDnE(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$updateContentDescription$9(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uk1EUTIOqVxN5n5UYbmapGUcWi0(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 39
    iput p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 56
    new-instance p2, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private dispose()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 279
    iput-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 282
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 283
    iput-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_1
    return-void
.end method

.method private getProgress(I)I
    .locals 1

    .line 306
    iget p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

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

.method private getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;
    .locals 4

    .line 380
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 385
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    .line 386
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 392
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    .line 398
    :goto_0
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v2, v3, :cond_2

    .line 400
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 401
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v2, v3, :cond_3

    .line 402
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 403
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 409
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    .line 410
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, p1, :cond_4

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p0, p1, :cond_4

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-eq p0, p1, :cond_4

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p0, p1, :cond_5

    .line 412
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private isIconClicked(FF)Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStartProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchDownIcon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->isTouched(Landroid/view/View;FF)Z

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

    .line 145
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 146
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

    .line 147
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

.method private synthetic lambda$dispatch$2(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 192
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 2

    .line 91
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 56
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 58
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$setProgress$7(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private synthetic lambda$updateContentDescription$8(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 341
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateContentDescription$9(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 342
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void
.end method

.method private synthetic lambda$updateLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 289
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateLabel$4(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    .line 291
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateProgress$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 300
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

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

    .line 301
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method private setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 314
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->getProgress(I)I

    move-result v0

    .line 315
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p1, :cond_0

    .line 317
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 318
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 319
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 320
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 321
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 322
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 323
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 324
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 330
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_1

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_2

    .line 333
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 335
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 3

    .line 346
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 348
    iget v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    .line 350
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_sound:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 352
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_vib:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_mute:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 356
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 357
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_mute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 358
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_unmute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 362
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    if-eqz p0, :cond_5

    .line 363
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 340
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    .line 341
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 342
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 288
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    .line 289
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 290
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 299
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    .line 300
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    .line 301
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRowLayout(Z)V
    .locals 5

    .line 430
    sget v0, Lcom/android/systemui/R$id;->sub_display_dual_volume_icon_label:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 431
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 433
    sget v0, Lcom/android/systemui/R$id;->volume_seekbar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 434
    iget-boolean v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    .line 437
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$drawable;->sub_display_volume_seekbar_drawable_expand_blur:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 436
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$drawable;->sub_volume_seekbar_bg_blur:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$drawable;->sub_display_volume_seekbar_drawable:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 440
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->volume_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 445
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 446
    iget-object v3, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 447
    sget v4, Lcom/android/systemui/R$dimen;->volume_sub_large_display_dual_seek_bar_width:I

    goto :goto_2

    .line 448
    :cond_2
    sget v4, Lcom/android/systemui/R$dimen;->volume_sub_large_display_seek_bar_width:I

    .line 446
    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p1, :cond_3

    .line 449
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$dimen;->volume_sub_large_display_dual_seek_bar_margin:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 450
    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 451
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 452
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 190
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 197
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v4, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 169
    invoke-virtual {v0, v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 170
    invoke-virtual {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 173
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchDownIcon:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStartProgress:Z

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchDownIcon:Z

    goto :goto_0

    .line 157
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne v0, v3, :cond_4

    .line 158
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;->FROM_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;

    .line 159
    invoke-virtual {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v3, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 160
    invoke-virtual {v0, v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 178
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;Z)V
    .locals 7

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 71
    iput-object p5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 74
    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p3

    .line 76
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 77
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 78
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v1

    .line 79
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v2

    .line 80
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v3

    .line 81
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v4

    .line 82
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    .line 83
    iput-boolean p6, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    .line 85
    sget v5, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/view/VolumeIcon;

    iput-object v5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    .line 86
    invoke-virtual {v5, p1, p4, p2, p5}, Lcom/android/systemui/volume/view/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    .line 87
    sget-object p5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p5

    const/4 v5, 0x1

    if-eqz p5, :cond_2

    .line 88
    iget p5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget v6, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    if-ne p5, v6, :cond_0

    .line 89
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    const/4 v6, 0x2

    invoke-virtual {p5, v6}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_1

    .line 91
    :cond_0
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    new-instance v6, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;)V

    invoke-virtual {p5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p5, v6}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_2
    :goto_1
    const/high16 p5, 0x3f800000    # 1.0f

    if-nez v3, :cond_4

    .line 99
    iget-object v6, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 100
    iget-object v6, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const p5, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {v6, p5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_3

    .line 102
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 103
    iget-object v4, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {v4, p5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 106
    :goto_3
    sget p5, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/volume/view/VolumeSeekBar;

    iput-object p5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 107
    iget-object v4, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget v6, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {p5, v4, p1, v6}, Lcom/android/systemui/volume/view/VolumeSeekBar;->initialize(Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/android/systemui/volume/store/VolumePanelStore;I)V

    .line 108
    iget p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget p5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, p5, :cond_5

    .line 109
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    goto :goto_4

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 116
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p1, v3}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->getProgress(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 119
    sget p1, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 120
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 124
    invoke-direct {p0, p6}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateRowLayout(Z)V

    .line 126
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object p3, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 131
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, p2, :cond_6

    const/16 p1, 0x8

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 134
    :cond_6
    sget p1, Lcom/android/systemui/R$id;->volume_seekbar_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 135
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-eqz p6, :cond_7

    move-object p3, p1

    goto :goto_5

    :cond_7
    move-object p3, p0

    :goto_5
    invoke-virtual {p2, p3}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 136
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-eqz p6, :cond_8

    goto :goto_6

    :cond_8
    move-object p1, p0

    :goto_6
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 6

    .line 204
    sget-object v0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 270
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto/16 :goto_0

    .line 266
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSubScreenSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V

    goto/16 :goto_0

    .line 260
    :pswitch_2
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne p1, v0, :cond_2

    .line 261
    iput-boolean v5, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStartProgress:Z

    goto/16 :goto_0

    .line 256
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispose()V

    goto/16 :goto_0

    .line 248
    :pswitch_4
    iget p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_0

    .line 249
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 240
    :pswitch_5
    iget p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_1

    .line 241
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 228
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 229
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 230
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 231
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 223
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 215
    :pswitch_8
    iget v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_0

    .line 206
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 208
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mStream:I

    .line 209
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 210
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 208
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

    .line 32
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 421
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 422
    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->dispose()V

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

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubLargeDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method

.method public updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    .line 374
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq v0, v1, :cond_1

    .line 375
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
