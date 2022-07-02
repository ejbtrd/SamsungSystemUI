.class public final Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;
.super Ljava/lang/Object;
.source "QSCinemaCompany_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/cinema/QSCinemaCompany;",
        ">;"
    }
.end annotation


# instance fields
.field private final directorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaDirector;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaDirector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaLogger;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->directorProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaDirector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaLogger;",
            ">;)",
            "Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/qs/cinema/QSCinemaDirector;Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/qs/cinema/QSCinemaLogger;)Lcom/android/systemui/qs/cinema/QSCinemaCompany;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/cinema/QSCinemaCompany;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaDirector;Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/qs/cinema/QSCinemaLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/cinema/QSCinemaCompany;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->directorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    iget-object v1, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->newInstance(Lcom/android/systemui/qs/cinema/QSCinemaDirector;Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/qs/cinema/QSCinemaLogger;)Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/cinema/QSCinemaCompany_Factory;->get()Lcom/android/systemui/qs/cinema/QSCinemaCompany;

    move-result-object p0

    return-object p0
.end method
