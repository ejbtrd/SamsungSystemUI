.class final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SetupWizardPack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1;->accept(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1$1;->$it:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1$1;->invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V
    .locals 2
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_SETUPWIZARD_A11Y_ICON:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setType(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1$1;->$it:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_CLICKABLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setA11yClickable(Ljava/lang/Boolean;)V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$5$1$1;->$it:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_LONG_CLICKABLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setA11yLongClickable(Ljava/lang/Boolean;)V

    return-void
.end method
