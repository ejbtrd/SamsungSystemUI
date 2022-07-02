.class final Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;
.super Ljava/lang/Object;
.source "MiscPack.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
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

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 5
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

    .line 56
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DESKTOP_MODE_STATE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/4 v2, 0x4

    const/16 v3, 0x65

    if-eqz v0, :cond_3

    const/16 v4, 0x32

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 65
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    if-ne p1, v3, :cond_4

    .line 70
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1$2;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1$2;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    if-ne p1, v3, :cond_4

    .line 77
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1$3;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack$1$1$3;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    :cond_4
    :goto_1
    return-void
.end method
