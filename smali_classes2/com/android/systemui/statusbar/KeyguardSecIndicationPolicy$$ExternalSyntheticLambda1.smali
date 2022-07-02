.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/IndicationPosition;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/IndicationItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/IndicationPosition;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/IndicationItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/IndicationPosition;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/statusbar/IndicationItem;

    check-cast p1, Lcom/android/systemui/statusbar/IndicationChangeListener;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->$r8$lambda$_1JnzDiC3fAzhsv1yt7Rndl-WCE(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;Lcom/android/systemui/statusbar/IndicationChangeListener;)V

    return-void
.end method
