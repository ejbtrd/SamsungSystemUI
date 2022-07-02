.class final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GesturePack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;->accept(Ljava/util/Map;)V
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
.field final synthetic $disable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1$1$1;->$disable:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 272
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1$1$1;->invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1$1$1;->$disable:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->DISABLE_EDGE_BACK_GESTURE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->ENABLE_EDGE_BACK_GESTURE:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setType(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;)V

    return-void
.end method
