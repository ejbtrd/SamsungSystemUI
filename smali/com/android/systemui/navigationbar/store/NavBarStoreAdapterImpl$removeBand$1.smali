.class final Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$removeBand$1;
.super Ljava/lang/Object;
.source "NavBarStoreAdapterImpl.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->removeBand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/systemui/navigationbar/bandaid/Band;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $event:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$removeBand$1;->$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/systemui/navigationbar/bandaid/Band;)Z
    .locals 1
    .param p1    # Lcom/android/systemui/navigationbar/bandaid/Band;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$removeBand$1;->$event:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band;->getTargetEvent()Lcom/android/systemui/navigationbar/store/EventType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 79
    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$removeBand$1;->test(Lcom/android/systemui/navigationbar/bandaid/Band;)Z

    move-result p0

    return p0
.end method
