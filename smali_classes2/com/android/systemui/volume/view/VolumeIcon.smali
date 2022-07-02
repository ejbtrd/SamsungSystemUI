.class public Lcom/android/systemui/volume/view/VolumeIcon;
.super Landroid/widget/FrameLayout;
.source "VolumeIcon.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMediaIconState:I

.field private mIcon:Landroid/view/View;

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconEarShockColor:Landroid/content/res/ColorStateList;

.field private mIconMutedColor:Landroid/content/res/ColorStateList;

.field private mIconType:I

.field private mIsAnimatedType:Z

.field private mIsSubScreen:Z

.field private mMuteIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldUpdateIcon:Z

.field private mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

.field private mStream:I

.field private mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public static synthetic $r8$lambda$Dnh7qf9jMyapYZlBIK9dEBAlDgw(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeIcon;->lambda$onChanged$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mz8i7BqGVGycKIpvyFNQ0_E9J0U(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->lambda$onChanged$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ut43wsbpKZTNr1fc1CBZ07vB7dI(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->lambda$onChanged$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XVa2zqP2i1SX1AGgtEvhqgdWl2Y(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->lambda$onChanged$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3Piv5SA6qLualwXi_Qb7Ce6Ivs(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->lambda$onChanged$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p_68ICTqoO9g72CDLeUtplaNU0M(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->lambda$onChanged$0(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    .line 39
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    const/4 p2, -0x1

    .line 44
    iput p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mCurrentMediaIconState:I

    .line 57
    iput p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    .line 61
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    .line 63
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_sound_ringtone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$drawable;->tw_ic_audio_media_note:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessibility_mtrl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$drawable;->tw_ic_audio_call_mtrl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v5, Lcom/android/systemui/R$drawable;->tw_ic_audio_call_bt_mtrl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v6, Lcom/android/systemui/R$drawable;->tw_ic_audio_bixby_mtrl:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth_mtrl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$drawable;->tw_ic_audio_mute_mtrl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v7, Lcom/android/systemui/R$drawable;->tw_ic_audio_media_mute_mtrl:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ACCESSIBILITY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_VOICE_CALL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BLUETOOTH_SCO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_BIXBY_VOICE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SMART_VIEW:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_DUAL_AUDIO:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->volume_icon_color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 91
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 93
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->volume_icon_earshock_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 p0, 0x1

    new-array v0, p0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    .line 545
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array p0, p0, [I

    aput p1, p0, v1

    invoke-direct {v2, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private getIconState(II)I
    .locals 6

    int-to-double v0, p1

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    cmpl-double p0, v0, v4

    if-lez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initVolumeIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 4

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v1, :cond_0

    .line 127
    sget v2, Lcom/android/systemui/R$color;->sub_large_display_volume_icon_color:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/R$color;->sub_display_volume_progress_color:I

    :goto_0
    const/4 v3, 0x0

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 125
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 130
    sget v1, Lcom/android/systemui/R$color;->sub_large_display_volume_icon_color:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/systemui/R$color;->sub_display_volume_progress_bg_color:I

    .line 129
    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 128
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->sub_display_volume_progress_earshock_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 131
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    :cond_2
    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 136
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 137
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method private isAlarmType()Z
    .locals 1

    .line 565
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEarShockLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 2

    .line 249
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p0

    .line 250
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 252
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    sget v1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_AUDIO_SHARING:I

    if-ne p1, v1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    :cond_0
    if-lez p0, :cond_1

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMediaType()Z
    .locals 1

    .line 557
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MUSIC:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_MULTI_SOUND:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRingtoneType()Z
    .locals 1

    .line 561
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWaveAnimatedType(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isMediaType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->supportAniIconType(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result p1

    if-nez p1, :cond_2

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isAlarmType()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$onChanged$0(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 149
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onChanged$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 152
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/volume/view/VolumeIcon;->isWaveAnimatedType(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 155
    :cond_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 156
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateRingerAnimation(I)V

    .line 157
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 158
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method private synthetic lambda$onChanged$2(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onChanged$3(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void
.end method

.method private synthetic lambda$onChanged$4(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onChanged$5(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/view/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    return-void
.end method

.method private setAnimatedIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 7

    .line 353
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isMediaType()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isAlarmType()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    sget-object p2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v2

    .line 366
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    .line 367
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->volume_mute_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    .line 368
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->volume_vibrate_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/ImageView;

    .line 369
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/ImageView;

    .line 370
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/systemui/volume/view/VolumeIcon;->setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object v1, p0

    .line 371
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/volume/view/VolumeIcon;->setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 355
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 356
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isMediaType()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x64

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    mul-int/2addr v1, v2

    .line 357
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/view/VolumeIcon;->getIconState(II)I

    move-result v0

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isAlarmType()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 362
    :cond_3
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/volume/view/VolumeIcon;->setMediaIconState(IIZ)V

    goto :goto_3

    .line 359
    :cond_4
    :goto_2
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    .line 360
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mCurrentMediaIconState:I

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->setSoundIconState(IIZI)V

    :goto_3
    return-void
.end method

.method private setDefaultIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 315
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v0

    .line 317
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    sget v1, Lcom/android/systemui/R$drawable;->ic_volume_remote:I

    goto :goto_0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 346
    :pswitch_0
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_mirroring_mtrl:I

    goto :goto_1

    .line 340
    :pswitch_1
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_accessory_mtrl:I

    goto :goto_1

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mNormalIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 328
    :pswitch_3
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_bluetooth_mtrl:I

    goto :goto_1

    .line 331
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mMuteIcons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 334
    :pswitch_5
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_vibrate_mtrl:I

    .line 335
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne p1, v0, :cond_1

    .line 336
    sget v1, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

    .line 349
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setIconResource(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 404
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-ne p1, v0, :cond_0

    .line 405
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mtrl:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 408
    :cond_0
    sget p4, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    if-ne p1, p4, :cond_1

    .line 409
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mtrl:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMediaIconState(IIZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v1, p2

    if-ne v11, v1, :cond_0

    .line 476
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    if-eqz v2, :cond_b

    :cond_0
    const/4 v2, -0x1

    if-eqz p3, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sub-int v3, v11, v1

    if-lez v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v11

    .line 488
    :goto_1
    iget-object v4, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/ImageView;

    .line 489
    iget-object v4, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_media_icon_mute:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    .line 490
    iget-object v4, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_media_icon_note:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/ImageView;

    .line 491
    iget-object v4, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    .line 492
    iget-object v4, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/ImageView;

    .line 494
    iget-boolean v4, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v4, :cond_7

    .line 495
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v4, :cond_5

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v5

    goto :goto_3

    :cond_5
    if-ne v1, v2, :cond_6

    :goto_2
    move v1, v6

    goto :goto_3

    :cond_6
    move v1, v7

    :goto_3
    move/from16 v20, v1

    goto :goto_4

    :cond_7
    move/from16 v20, v10

    :goto_4
    if-ne v3, v6, :cond_8

    .line 502
    iget-object v12, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v13, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    move v2, v10

    goto :goto_6

    :cond_8
    if-ne v3, v5, :cond_9

    .line 504
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move v13, v10

    move/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    :goto_5
    move v2, v13

    goto :goto_6

    :cond_9
    move v13, v10

    if-ne v3, v7, :cond_a

    .line 506
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_5

    .line 508
    :cond_a
    iget-object v12, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v1, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    const/16 v17, 0x0

    move v2, v13

    move v13, v1

    invoke-virtual/range {v12 .. v20}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 510
    :goto_6
    iput-boolean v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    .line 511
    iput v11, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mCurrentMediaIconState:I

    :cond_b
    return-void
.end method

.method private setSoundIconState(IIZI)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v1, p2

    move/from16 v2, p4

    if-ne v11, v1, :cond_0

    .line 429
    iget-boolean v3, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    if-eq v3, v2, :cond_e

    .line 430
    :cond_0
    iput v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    const/4 v12, 0x0

    const/4 v3, -0x1

    if-eqz p3, :cond_4

    if-eq v1, v3, :cond_4

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    move v4, v12

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    sub-int v4, v11, v4

    if-lez v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v11

    .line 442
    :goto_2
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Landroid/widget/ImageView;

    .line 443
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_mute_icon:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/widget/ImageView;

    .line 444
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/ImageView;

    .line 445
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/widget/ImageView;

    .line 446
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/widget/ImageView;

    .line 447
    iget-object v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->volume_vibrate_icon:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/widget/ImageView;

    .line 449
    iget-boolean v5, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    .line 450
    sget-boolean v5, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v5, :cond_6

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v6

    goto :goto_4

    :cond_6
    if-ne v1, v3, :cond_7

    :goto_3
    move v1, v7

    goto :goto_4

    :cond_7
    move v1, v8

    :goto_4
    move/from16 v21, v1

    goto :goto_5

    :cond_8
    move/from16 v21, v12

    .line 456
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v11, :cond_a

    if-ne v2, v8, :cond_9

    .line 459
    iget-object v13, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v14, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_6

    .line 461
    :cond_9
    iget-object v13, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    move-object/from16 v14, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    invoke-virtual/range {v13 .. v20}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_6

    :cond_a
    if-ne v4, v7, :cond_b

    .line 464
    iget-object v13, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v14, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-ne v4, v6, :cond_c

    .line 466
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    move/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v10, v21

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_6

    :cond_c
    if-ne v4, v8, :cond_d

    .line 468
    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v2, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    move/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v10, v21

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 470
    :cond_d
    :goto_6
    iput-boolean v12, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    .line 471
    iput v11, v0, Lcom/android/systemui/volume/view/VolumeIcon;->mCurrentMediaIconState:I

    :cond_e
    return-void
.end method

.method private setState(ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 376
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    if-eq v0, p1, :cond_3

    .line 377
    iput p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0, p5}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSplashAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p0, p4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private shouldUpdateIconLayout(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    .line 259
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsAnimatedType:Z

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    return p1
.end method

.method private supportAniIconType(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private supportAnimatedIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z
    .locals 1

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isMediaType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->supportAniIconType(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_RING:I

    if-eq p0, p1, :cond_2

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_NOTIFICATION:I

    if-eq p0, p1, :cond_2

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_SYSTEM:I

    if-eq p0, p1, :cond_2

    sget p1, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->STREAM_ALARM:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    .line 197
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v0

    .line 198
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x3ecccccd    # 0.4f

    .line 201
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 204
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 206
    :goto_1
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result p1

    .line 207
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method private updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 1

    .line 264
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->supportAnimatedIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p1

    .line 265
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->shouldUpdateIconLayout(ZZ)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_a

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isMediaType()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 271
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_1

    .line 273
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_large_display_media_icon:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_display_media_icon:I

    .line 272
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    goto/16 :goto_4

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->volume_animated_media_icon:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_4

    .line 277
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isAlarmType()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 285
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    if-eqz p1, :cond_6

    .line 286
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_5

    .line 287
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_large_display_animated_icon:I

    goto :goto_1

    :cond_5
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_display_animated_icon:I

    .line 286
    :goto_1
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_4

    .line 289
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->volume_animated_icon:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_4

    .line 278
    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    if-eqz p1, :cond_9

    .line 279
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_8

    .line 280
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_large_display_ringtone_icon:I

    goto :goto_3

    :cond_8
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_display_ringtone_icon:I

    .line 279
    :goto_3
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_4

    .line 282
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->volume_animated_ringtone_icon:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    :goto_4
    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsAnimatedType:Z

    goto :goto_7

    .line 294
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    if-eqz p1, :cond_c

    .line 295
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz v0, :cond_b

    .line 296
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_large_display_default_icon:I

    goto :goto_5

    :cond_b
    sget v0, Lcom/android/systemui/R$layout;->volume_sub_display_default_icon:I

    .line 295
    :goto_5
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    goto :goto_6

    .line 298
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->volume_default_icon:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    :goto_6
    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsAnimatedType:Z

    .line 302
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 1

    .line 307
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->supportAnimatedIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsAnimatedType:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/VolumeIcon;->setAnimatedIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->setDefaultIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    :goto_0
    return-void
.end method

.method private updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 213
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result v0

    .line 214
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p2

    .line 215
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 217
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 218
    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->isEarShockLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 221
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconEarShockColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 223
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 225
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->supportAnimatedIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 226
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 227
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isMediaType()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 228
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->volume_media_icon_note:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_media_icon_wave_l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 230
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_media_icon_wave_s:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 231
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 233
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 234
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isAlarmType()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 235
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 237
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 239
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 240
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 242
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget p1, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_8

    .line 244
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    return-void
.end method

.method private updateRingerAnimation(I)V
    .locals 11

    .line 516
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    if-eq v0, p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 517
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->volume_icon_mute_splash:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 518
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_mute_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 519
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_normal_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 520
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_sound_icon_wave_l:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 521
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_sound_icon_wave_s:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    .line 522
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIcon:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->volume_vibrate_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 524
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    .line 525
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    if-ne p1, v2, :cond_2

    .line 528
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    move-object v8, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_2

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    move-object v2, v6

    move-object v6, v7

    move-object v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 532
    :goto_2
    iput-boolean v10, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mShouldUpdateIcon:Z

    .line 533
    iput v10, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mCurrentMediaIconState:I

    .line 534
    iput p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    :cond_3
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 576
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/android/systemui/volume/view/VolumePanelMotion;)V
    .locals 0

    .line 100
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStateObserverUnsubscriber:Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 101
    iput-object p4, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 102
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    .line 103
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsSubScreen:Z

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    sget-object p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {p3, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    .line 107
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/view/VolumeIcon;->initVolumeIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 142
    sget-object v0, Lcom/android/systemui/volume/view/VolumeIcon$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIsAnimatedType:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 183
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_TARGET_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v0

    .line 184
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->ICON_CURRENT_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result p1

    .line 185
    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isRingtoneType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->isAlarmType()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/volume/view/VolumeIcon;->setMediaIconState(IIZ)V

    goto :goto_1

    .line 186
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mIconType:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/systemui/volume/view/VolumeIcon;->setSoundIconState(IIZI)V

    goto :goto_1

    .line 171
    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 172
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/volume/view/VolumeIcon;)V

    .line 173
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/VolumeIcon;)V

    .line 174
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 163
    :cond_4
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeIcon;->mStream:I

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;

    invoke-virtual {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 164
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/view/VolumeIcon;)V

    .line 165
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/VolumeIcon;)V

    .line 166
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/VolumeIcon;)V

    .line 149
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/view/VolumeIcon;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 150
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->dispose()V

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeIcon;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/VolumeIcon;->dispose()V

    return-void
.end method
