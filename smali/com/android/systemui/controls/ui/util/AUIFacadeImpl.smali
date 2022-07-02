.class public final Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;
.super Ljava/lang/Object;
.source "AUIFacadeImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/util/AUIFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;,
        Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAUIFacadeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AUIFacadeImpl.kt\ncom/android/systemui/controls/ui/util/AUIFacadeImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1819#2:141\n1820#2:143\n1#3:142\n*E\n*S KotlinDebug\n*F\n+ 1 AUIFacadeImpl.kt\ncom/android/systemui/controls/ui/util/AUIFacadeImpl\n*L\n69#1:141\n69#1:143\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private audioManager:Landroid/media/AudioManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final soundIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final soundResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->Companion:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/AudioManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    const/16 p1, 0x8

    new-array p1, p1, [Lkotlin/Pair;

    .line 37
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->general_off:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->general_on:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 38
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->light_off:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->light_on:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    .line 39
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->automation_error:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x4

    aput-object p2, p1, v0

    .line 40
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->automation_success:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x5

    aput-object p2, p1, v0

    .line 41
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->media_pause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x6

    aput-object p2, p1, v0

    .line 42
    sget-object p2, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    sget v0, Lcom/android/systemui/R$raw;->media_play_resume:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v0, 0x7

    aput-object p2, p1, v0

    .line 36
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundResources:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    return-void
.end method

.method private final getSoundId(IIZ)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPlayResume:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->MediaPause:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationSuccess:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->AutomationError:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_0
    if-nez v0, :cond_4

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "getSoundId(): can\'t find customSound:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AUIFacadeImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v0, p1

    :cond_4
    if-nez v0, :cond_8

    const/16 p1, 0xd

    if-ne p2, p1, :cond_6

    .line 119
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    if-eqz p3, :cond_5

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->LightOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    .line 120
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    if-eqz p3, :cond_7

    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOn:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->GeneralOff:Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_3
    move-object v0, p0

    :cond_8
    return-object v0
.end method

.method private final getVolume()F
    .locals 2

    .line 126
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result p0

    return p0
.end method

.method private final loadResources(Landroid/media/SoundPool;)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundResources:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 69
    iget-object v2, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setHapticFeedback(Landroid/view/View;I)Z
    .locals 0

    .line 132
    invoke-static {p2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0
.end method

.method private final unloadResources(Landroid/media/SoundPool;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundIdMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public final createSoundPool$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/media/SoundPool;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 55
    new-instance p0, Landroid/media/SoundPool$Builder;

    invoke-direct {p0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 56
    invoke-static {}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;->values()[Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$SoundId;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 58
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const-string/jumbo v1, "stv_touch_tone"

    .line 59
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    const/16 v1, 0xd

    .line 60
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    const/4 v1, 0x4

    .line 61
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 65
    invoke-virtual {p0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p0

    const-string v0, "Builder().run {\n        setMaxStreams(SoundId.values().size)\n        setAudioAttributes(\n            AudioAttributes.Builder().run {\n                semAddAudioTag(\"stv_touch_tone\")\n                setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)\n                setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)\n                build()\n            }\n        )\n        build()\n    }"

    .line 55
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public finalize()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->unloadResources(Landroid/media/SoundPool;)V

    .line 81
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->createSoundPool$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/media/SoundPool;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->loadResources(Landroid/media/SoundPool;)V

    .line 50
    new-instance v1, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl$initialize$1$1;-><init>(Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    return-void
.end method

.method public final onLoadComplete$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/media/SoundPool;II)V
    .locals 0
    .param p1    # Landroid/media/SoundPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p2, "soundPool"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public playClick(IIZLandroid/view/View;)V
    .locals 8
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->soundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->getSoundId(IIZ)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->getVolume()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :goto_0
    const/4 p1, 0x1

    .line 98
    invoke-direct {p0, p4, p1}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->setHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method

.method public playLongPress(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/16 v0, 0x6c

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->setHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method
