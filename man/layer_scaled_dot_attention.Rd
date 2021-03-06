% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer-scaled-dot-attention.R
\name{layer_scaled_dot_attention}
\alias{layer_scaled_dot_attention}
\title{Scaled dot product attention layer}
\usage{
layer_scaled_dot_attention(object, dropout_rate = 0, ...)
}
\arguments{
\item{dropout_rate}{Dropout rate}
}
\description{
Introduced in \href{https://arxiv.org/pdf/1706.03762v5.pdf}{Attention Is All You Need}.
Defined as:
}
\details{
\deqn{Attention(Q, K, V) = softmax(\frac{QK^T}{\sqrt{d_k}})V}

Originally, \code{dropout} hasn't been specified there. It was added inside the layer
in the \href{https://github.com/google-research/google-research/blob/4808a726f4b126ea38d49cdd152a6bb5d42efdf0/tft/libs/tft_model.py#L240}{Temporal Fusion Transformer} implementation by Google.
It's a component of the Multi-Head Attention Layers (as well as its interpretable version, avalilable in the \code{aion} package).Test
}
\section{Call arguments}{


\itemize{
\item query: Query Tensor of shape \verb{[B, T, dim]}.
\item value: Value Tensor of shape \verb{[B, S, dim]}.
\item key: Optional key Tensor of shape \verb{[B, S, dim]}. If not given, will use value
for both key and value, which is the most common case.
\item attention_mask: a boolean mask of shape \verb{[B, T, S]}, that prevents attention
to certain positions.
\item return_attention_scores: A boolean to indicate whether the output should be
attention output if TRUE, or (attention_output, attention_scores) if FALSE.
Defaults to FALSE.
\item training: Python boolean indicating whether the layer should behave in
training mode (adding dropout) or in inference mode (no dropout). Defaults
to either using the training mode of the parent layer/model, or FALSE
(inference) if there is no parent layer.
}

}

