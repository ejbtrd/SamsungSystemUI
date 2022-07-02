.class public final synthetic Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/android/systemui/navigationbar/store/EventType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;->f$2:Lcom/android/systemui/navigationbar/store/EventType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;->f$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;->f$2:Lcom/android/systemui/navigationbar/store/EventType;

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->$r8$lambda$9i6E2geJ7lXPiM4dZUAzrBrxuEA(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Lcom/android/systemui/navigationbar/bandaid/Band;)Z

    move-result p0

    return p0
.end method
