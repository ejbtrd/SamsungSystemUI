.class public final synthetic Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;->f$1:Z

    iget p0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda5;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->$r8$lambda$FtkH6lcmFjCKMpd7hYcZ6gs2ztw(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZI)V

    return-void
.end method
