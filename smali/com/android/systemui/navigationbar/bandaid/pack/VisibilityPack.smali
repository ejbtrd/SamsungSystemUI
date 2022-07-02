.class public final Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;
.super Ljava/lang/Object;
.source "VisibilityPack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisibilityPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/VisibilityPack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,128:1\n43#2:129\n43#2:130\n43#2:131\n43#2:132\n43#2:133\n43#2:134\n*E\n*S KotlinDebug\n*F\n+ 1 VisibilityPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/VisibilityPack\n*L\n28#1:129\n40#1:130\n56#1:131\n74#1:132\n91#1:133\n108#1:134\n*E\n"
.end annotation


# instance fields
.field private final bands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/Band;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 6
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;->bands:Ljava/util/List;

    .line 28
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 29
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_KNOX_MONITOR:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "VIS_PACK_GET_NAVBAR_VISIBILITY_KNOX_POLICY"

    .line 31
    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 32
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 33
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 34
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$band$1$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 42
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "VIS_PACK_UPDATE_NAVBAR_VISIBILITY_BY_KNOX"

    .line 43
    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 44
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 45
    const-class v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 46
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 47
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$1$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 57
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 58
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    .line 59
    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 61
    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 62
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getLOW_PRIORITY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPriority(Ljava/lang/Integer;)V

    .line 64
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$2$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 72
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "VIS_PACK_UPDATE_NAVBAR_VISIBILITY"

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_NAVBAR_VISIBILITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 78
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarFrame;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 79
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 80
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$3$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 89
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "VIS_PACK_UPDATE_SYSTEMUI_STATE_FLAG"

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 95
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 96
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 97
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$4$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 106
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "VIS_PACK_REEVAULATE_NAVBAR"

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 112
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 113
    const-class v1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 114
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$5$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 122
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBands()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/Band;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;->bands:Ljava/util/List;

    return-object p0
.end method
