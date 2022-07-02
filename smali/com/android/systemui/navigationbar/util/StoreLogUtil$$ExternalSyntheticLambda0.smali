.class public final synthetic Lcom/android/systemui/navigationbar/util/StoreLogUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->$r8$lambda$vssLcC6HqAPsROFdRC97u-b_mWI(Ljava/lang/StringBuilder;Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)V

    return-void
.end method
