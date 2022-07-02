.class final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;
.super Ljava/lang/Object;
.source "SetupWizardPack.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/Map<",
        "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_SETUPWIZARD_STYLE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE1:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1$2;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1$2;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    :cond_1
    :goto_0
    return-void
.end method
