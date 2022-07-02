.class public final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;
.super Ljava/lang/Object;
.source "SetupWizardPack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetupWizardPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetupWizardPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,153:1\n43#2:154\n43#2:155\n43#2:156\n43#2:157\n43#2:158\n43#2:159\n*E\n*S KotlinDebug\n*F\n+ 1 SetupWizardPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack\n*L\n26#1:154\n48#1:155\n70#1:156\n94#1:157\n112#1:158\n130#1:159\n*E\n"
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
    .locals 4
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->bands:Ljava/util/List;

    .line 26
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 27
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SETUPWIZARD:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 28
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v3, "SETUPWIZARD_PACK_SET_NAVBAR_TYPE"

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 30
    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 31
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 32
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 33
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v3, "SETUPWIZARD_PACK_ON_ATTACHED_TO_WINDOW"

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 52
    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 53
    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 54
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 55
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 68
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v3, "SETUPWIZARD_PACK_UPDATE_DISABLE_FLAGS"

    .line 73
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 74
    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 75
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 76
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 77
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 92
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v3, "SETUPWIZARD_PACK_UPDATE_DARK_INTENSITY"

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 99
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 100
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 101
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$3$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 110
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v3, "SETUPWIZARD_PACK_SET_NAVBAR_ICON_HINT"

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 116
    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 117
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 118
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 119
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$4$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 128
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "SETUPWIZARD_PACK_UPDATE_A11Y_SERVICE"

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_UPDATE_A11Y_SERVICE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 135
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 136
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 137
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 147
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

    .line 151
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->bands:Ljava/util/List;

    return-object p0
.end method
