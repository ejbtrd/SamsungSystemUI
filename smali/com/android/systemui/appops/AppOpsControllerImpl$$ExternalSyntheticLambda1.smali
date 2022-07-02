.class public final synthetic Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iput p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$4:Z

    iput-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iget v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$4:Z

    iget-object v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->$r8$lambda$frr6enDKrUlpxbI0l9MRVphP3HE(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
