.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;
.super Ljava/lang/Object;
.source "NavBarStoreAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;-><init>()V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->build()Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p0

    return-object p0
.end method
