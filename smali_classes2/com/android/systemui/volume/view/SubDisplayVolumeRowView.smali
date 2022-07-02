.class public Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;
.super Landroid/widget/LinearLayout;
.source "SubDisplayVolumeRowView.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
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

.field private mEarProtectLevel:I

.field private mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

.field private mIconActiveBgColor:Landroid/content/res/ColorStateList;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

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

.field private mProgressBarAnimator:Landroid/animation/ObjectAnimator;

.field private mRecheckCallback:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStream:I

.field private mTargetProgressLevel:I


# direct methods
.method public static synthetic $r8$lambda$4jHdcXd_HT6K0TCPfUYm33in0zk(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateLabel$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7lvUwWIGMkEX2ZmIqWYgMcCau5Q(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateContentDescription$8(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EEVVgBJEe-JyP_SvOvgWFz2jueA(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MkGmsV3z8XNULYcfgbFTNPJEwsA(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ogaea8QHMA4YrYDaYZzILrP0g_U(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateContentDescription$7(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SnPTjNuGStPuhu8I9XMzcRDhE3k(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateProgress$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TpwUqi-6DpNjfd6NC996CTh09vc(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZRMRpONIbYDXrrhBGdkvHXtByFU(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$dispatch$1(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a0as3ehEYxk3C8vcCKxT9x-R1xA(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateDualColorSeekBar$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wImOc3K613AMR87F1K5QAGWgwX0(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->lambda$updateProgress$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 37
    iput p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    .line 50
    new-instance p2, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->sub_display_volume_progress_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 59
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->sub_display_volume_progress_bg_color:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 61
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIconActiveBgColor:Landroid/content/res/ColorStateList;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    return p0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 420
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private dispose()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 223
    iput-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_1

    .line 226
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 227
    iput-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_1
    return-void
.end method

.method private getProgress(I)I
    .locals 1

    .line 250
    iget p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

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

    .line 371
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->SMART_VIEW_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 376
    :cond_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->REMOTE_LABEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v0

    .line 377
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 383
    :cond_1
    :try_start_0
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;->NAME_RES:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;

    move-result-object v1

    .line 384
    iget-object v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

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

    .line 389
    :goto_0
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-ne v2, v3, :cond_2

    .line 391
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    sget v3, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-ne v2, v3, :cond_3

    .line 393
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 394
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$string;->volume_amplify_ambient_sound_title:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 400
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    .line 401
    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, p1, :cond_4

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq p0, p1, :cond_4

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    if-eq p0, p1, :cond_4

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p0, p1, :cond_5

    .line 403
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

.method private synthetic lambda$dispatch$1(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    .line 148
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 149
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 50
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 52
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method private synthetic lambda$updateContentDescription$7(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 297
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateContentDescription$8(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 298
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void
.end method

.method private synthetic lambda$updateDualColorSeekBar$6(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 283
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateLabel$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 233
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    .line 235
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateProgress$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 244
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateProgress$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method private setProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 5

    .line 258
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->getProgress(I)I

    move-result v0

    .line 259
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mTargetProgressLevel:I

    if-ne p1, v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    new-array v3, v3, [I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    aput v4, v3, v2

    aput v0, v3, v1

    const-string/jumbo v1, "progress"

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    .line 265
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    aput v4, v3, v2

    aput v0, v3, v1

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 270
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mTargetProgressLevel:I

    .line 271
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 274
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mProgressBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_3

    .line 275
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 277
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 3

    .line 302
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 304
    iget v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget v2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    .line 306
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_sound:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 308
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_vib:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->volume_icon_content_description_ringtone_to_mute:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 312
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 313
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 316
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_mute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 314
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->volume_icon_content_description_to_unmute:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 318
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    if-eqz p2, :cond_5

    .line 319
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 321
    :cond_5
    sget p2, Lcom/android/systemui/R$id;->volume_row_icon_with_label:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 322
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 296
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    .line 297
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 298
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDualColorSeekBar(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 282
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    .line 283
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    .line 284
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    .line 288
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    .line 289
    iget v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mEarProtectLevel:I

    if-eq p1, v0, :cond_0

    .line 290
    iput p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mEarProtectLevel:I

    .line 291
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_0
    return-void
.end method

.method private updateLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    .line 233
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 234
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    .line 244
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;)V

    .line 245
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRowLayout(Z)V
    .locals 2

    .line 430
    sget v0, Lcom/android/systemui/R$id;->sub_display_dual_volume_icon_label:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 432
    sget p1, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/VolumeIcon;

    .line 433
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 434
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 147
    iget-object p2, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 154
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;Z)V
    .locals 8

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mActionObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 71
    iput-object p3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 73
    sget-object p3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p4, p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p3

    .line 75
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    .line 76
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 77
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v1

    .line 78
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v2

    .line 79
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v3

    .line 80
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p2, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p6, :cond_0

    .line 83
    sget p1, Lcom/android/systemui/R$id;->volume_row_icon_with_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 84
    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_1

    .line 86
    :cond_0
    sget v7, Lcom/android/systemui/R$id;->volume_row_icon:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/volume/view/VolumeIcon;

    iput-object v7, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    .line 87
    invoke-virtual {v7, p1, p4, p2, p5}, Lcom/android/systemui/volume/view/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-nez v3, :cond_2

    .line 91
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p5, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 92
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p5, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p5, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 95
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/VolumeIcon;

    invoke-virtual {p5, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 100
    :goto_1
    sget p1, Lcom/android/systemui/R$id;->volume_row_slider:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 101
    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p5}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIconActiveBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p5}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p5}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 104
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p5, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v4, Lcom/android/systemui/R$color;->sub_display_volume_progress_earshock_bg_color:I

    const/4 v5, 0x0

    invoke-virtual {p5, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p5

    iget-object v4, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/systemui/R$color;->sub_display_volume_progress_earshock_color:I

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 104
    invoke-virtual {p1, p5, v4}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    .line 107
    iget p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget p5, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    if-ne p1, p5, :cond_3

    .line 108
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 109
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    goto :goto_2

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 115
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance p5, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;

    invoke-direct {p5, p0, v5}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$1;)V

    invoke-virtual {p1, p5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->getProgress(I)I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    .line 119
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateDualColorSeekbar(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 121
    sget p1, Lcom/android/systemui/R$id;->volume_row_header:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    .line 122
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 126
    invoke-direct {p0, p6}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateRowLayout(Z)V

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p3, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 133
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget p2, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, p2, :cond_4

    const/16 p1, 0x8

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 6

    .line 161
    sget-object v0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

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

    .line 214
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispose()V

    goto/16 :goto_0

    .line 206
    :pswitch_1
    iget p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_0

    .line 207
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_2
    iget p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-ne p1, v0, :cond_1

    .line 199
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 186
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 187
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    .line 188
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 189
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 187
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 179
    :pswitch_4
    iget v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 181
    iget-object p1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mRecheckCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 173
    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto :goto_0

    .line 163
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateDualColorSeekBar(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 166
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mStream:I

    .line 167
    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    iget-object v1, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    .line 168
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 29
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 412
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->dispose()V

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

    .line 140
    iget-object v0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/view/SubDisplayVolumeRowView;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method

.method public updateVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    .line 333
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    if-eq v0, v1, :cond_1

    .line 334
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
