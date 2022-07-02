.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack;
.super Ljava/lang/Object;
.source "RotationPack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotationPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotationPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/RotationPack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,64:1\n43#2:65\n43#2:66\n43#2:67\n*E\n*S KotlinDebug\n*F\n+ 1 RotationPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/RotationPack\n*L\n24#1:65\n38#1:66\n49#1:67\n*E\n"
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
    .locals 2
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    .line 24
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "ROTATION_PACK_GET_ROTATE_BUTTON_STYLE"

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 28
    const-class v1, Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 29
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack$band$1$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack$band$1$1;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 36
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "ROTATION_PACK_SET_FLOATING_ROTATE_BUTTON_POSITION"

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 42
    const-class v1, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 43
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack$1$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack$1$1;

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 47
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v0, "ROTATION_PACK_CHECK_ROTATION_BUTTON_DISABLE_POLICY"

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 53
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 54
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack$2$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack$2$1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 58
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 61
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RotationPack;->mBands:Ljava/util/List;

    return-object p0
.end method
