.class public final Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;
.super Ljava/lang/Object;
.source "QSCinemaLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/cinema/QSCinemaLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/cinema/QSCinemaProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/qs/cinema/QSCinemaLogger;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaLogger;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/cinema/QSCinemaLogger;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;->newInstance(Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/cinema/QSCinemaLogger_Factory;->get()Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    move-result-object p0

    return-object p0
.end method
