.class public final Lcom/android/systemui/fragments/FragmentService_Factory;
.super Ljava/lang/Object;
.source "FragmentService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/fragments/FragmentService;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final fragmentCreatorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->fragmentCreatorFactoryProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;)",
            "Lcom/android/systemui/fragments/FragmentService_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/fragments/FragmentService_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fragments/FragmentService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/fragments/FragmentService;
    .locals 1

    .line 42
    new-instance v0, Lcom/android/systemui/fragments/FragmentService;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fragments/FragmentService;-><init>(Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/fragments/FragmentService;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->fragmentCreatorFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;

    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentService_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0, p0}, Lcom/android/systemui/fragments/FragmentService_Factory;->newInstance(Lcom/android/systemui/fragments/FragmentService$FragmentCreator$Factory;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/fragments/FragmentService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService_Factory;->get()Lcom/android/systemui/fragments/FragmentService;

    move-result-object p0

    return-object p0
.end method
