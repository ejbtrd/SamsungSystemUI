.class public final synthetic Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$1:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$3:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda6;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->$r8$lambda$su3-tRrQ7WxE6bM205KkhEFYmQQ(Lcom/android/systemui/statusbar/policy/CallbackHandler;ZIII)V

    return-void
.end method
