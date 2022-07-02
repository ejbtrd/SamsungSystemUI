.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideDisplayControllerOptionalFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lcom/android/wm/shell/common/DisplayController;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;->displayControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDisplayControllerOptional(Lcom/android/wm/shell/common/DisplayController;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayController;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideDisplayControllerOptional(Lcom/android/wm/shell/common/DisplayController;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideDisplayControllerOptionalFactory;->provideDisplayControllerOptional(Lcom/android/wm/shell/common/DisplayController;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
