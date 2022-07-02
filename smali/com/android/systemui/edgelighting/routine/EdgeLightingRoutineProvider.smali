.class public Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;
.super Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;
.source "EdgeLightingRoutineProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

.field private mEdgeLightingEffect:Ljava/lang/String;

.field private mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

.field mHandler:Landroid/os/Handler;

.field private mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/SDK/routine/AbsRoutineActionProvider;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 41
    new-instance v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;-><init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingEffect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->registerScreenStateReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->unRegisterScreenStateReceiver()V

    return-void
.end method

.method private registerScreenStateReceiver()V
    .locals 2

    .line 157
    new-instance v0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterScreenStateReceiver()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLabelParam(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ";"

    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 135
    sget-object p2, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLabelParam param="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p2

    aget-object p1, p1, v0

    .line 137
    invoke-virtual {p2, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getStyleByKey(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    sget-object p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->TAG:Ljava/lang/String;

    const-string p2, "getLabelParam text is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->edge_lighting_style_basic:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAct(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    .line 88
    sget-object p3, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAct : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const-string p1, ";"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    if-nez p2, :cond_0

    .line 95
    new-instance p2, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-direct {p2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    .line 98
    :cond_0
    aget-object p2, p1, v0

    iput-object p2, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingEffect:Ljava/lang/String;

    const/4 p2, 0x1

    .line 99
    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 100
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    .line 101
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    .line 102
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 103
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 105
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingEffect:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result v5

    new-array v6, p2, [I

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    const/16 v7, 0x63

    if-eq v1, v7, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_1

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result p2

    :goto_1
    aput p2, v6, v0

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float v2, v2

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v2, v7

    sub-float/2addr p2, v2

    .line 108
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingWidth(Landroid/content/Context;I)I

    move-result v2

    .line 109
    invoke-static {v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v3

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EdgeLightingInfo : type="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",color="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",alpha="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",time="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",colorValue="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p1, v5}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectType(I)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p1, v6}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p1, p2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeAlpha(F)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    int-to-float p2, v2

    invoke-virtual {p1, p2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeWidth(F)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    int-to-long p2, v3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setLightingDuration(J)V

    .line 119
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsMultiResolutionSupoorted(Z)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return v0
.end method
