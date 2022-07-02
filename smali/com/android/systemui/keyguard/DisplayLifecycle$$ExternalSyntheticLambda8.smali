.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;->f$0:Z

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->$r8$lambda$3LrSZ7W_81VqNVZC0-ZFcmLOJ5I(ZLcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V

    return-void
.end method
