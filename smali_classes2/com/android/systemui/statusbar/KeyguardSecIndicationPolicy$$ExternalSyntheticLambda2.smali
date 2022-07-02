.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/IndicationChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/IndicationChangeListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/IndicationChangeListener;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->$r8$lambda$pu3xtlnHmVtOv_e5a13S5nJVGzg(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationChangeListener;Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method
