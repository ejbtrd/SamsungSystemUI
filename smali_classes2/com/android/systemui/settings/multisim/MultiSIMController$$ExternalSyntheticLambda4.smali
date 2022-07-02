.class public final synthetic Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->$r8$lambda$YvwkzZfxssCFnC433n2zR6pUsW0(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMVisibilityChangedCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
