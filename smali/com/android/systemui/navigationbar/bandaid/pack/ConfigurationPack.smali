.class public final Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;
.super Ljava/lang/Object;
.source "ConfigurationPack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,216:1\n43#2:217\n43#2:218\n43#2:219\n43#2:220\n43#2:221\n43#2:222\n43#2:223\n43#2:224\n43#2:225\n43#2:226\n43#2:227\n*E\n*S KotlinDebug\n*F\n+ 1 ConfigurationPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack\n*L\n26#1:217\n45#1:218\n74#1:219\n89#1:220\n103#1:221\n120#1:222\n142#1:223\n159#1:224\n170#1:225\n184#1:226\n197#1:227\n*E\n"
.end annotation


# instance fields
.field private final mBands:Ljava/util/List;
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
    .locals 9
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-string/jumbo v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    .line 26
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 27
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_KEY_ORDER_CHANGED"

    .line 28
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 29
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 31
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 32
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$band$1$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 43
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 46
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_CONFIG_CHANGED"

    .line 47
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 49
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 50
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lcom/android/systemui/statusbar/phone/LightBarController;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 51
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$1$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 72
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_GET_DEADZONE_SIZE"

    .line 76
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 77
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 78
    const-class v4, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 79
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$2$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 87
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_UPDATE_NAVBAR_TRANSITION_MODE"

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 92
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_TRANSITION_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 93
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 94
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 101
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 104
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_ICON_MOVEMENT:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_NAVBAR_ICON_MARQUEE"

    .line 106
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 107
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 108
    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 109
    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 110
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$4$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 118
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_OPEN_THEME_CHANGED"

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 123
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    new-array v4, v5, [Ljava/lang/Class;

    .line 125
    const-class v8, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v8, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 126
    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$5$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 140
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 143
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v4, "CONFIG_PACK_THEME_DEFULAT_CHANGED"

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 145
    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    new-array v4, v5, [Ljava/lang/Class;

    .line 147
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 148
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$6$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$6$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 157
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 160
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v0, "CONFIG_PACK_GET_THEME_DEFULAT"

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 163
    const-class v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 164
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 168
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 171
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v0, "CONFIG_PACK_ACTION_SOFT_RESET"

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_SETTINGS_SOFT_RESET:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 175
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$8$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$8$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 182
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v0, "CONFIG_PACK_GET_NAVBAR_CAN_MOVE"

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_CAN_MOVE_STATE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 188
    const-class v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 189
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$9$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$9$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 195
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 198
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MOVABLE_POSITION:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v0, "CONFIG_PACK_KEY_POSITION_CHANGED"

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_KEY_POSITION_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 203
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 204
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$10$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack$10$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 210
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 214
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;->mBands:Ljava/util/List;

    return-object p0
.end method
