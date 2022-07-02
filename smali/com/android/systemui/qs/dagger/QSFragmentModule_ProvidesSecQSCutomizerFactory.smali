.class public final Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;
.super Ljava/lang/Object;
.source "QSFragmentModule_ProvidesSecQSCutomizerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/customize/SecQSCustomizer;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
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
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;->viewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesSecQSCutomizer(Landroid/view/View;)Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule;->providesSecQSCutomizer(Landroid/view/View;)Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;->providesSecQSCutomizer(Landroid/view/View;)Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesSecQSCutomizerFactory;->get()Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-result-object p0

    return-object p0
.end method
