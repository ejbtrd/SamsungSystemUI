.class public final synthetic Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;->f$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;->f$1:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->$r8$lambda$sbQ8RH689Bm3meapVZBAAQZycWE(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/navigationbar/bandaid/Band;)V

    return-void
.end method
