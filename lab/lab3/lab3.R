
x = c(2,3,1,4,2,1)
y = c(3,1,1,1,3,1)
plot(x,y)
sum(x * y) 
x_bar = mean(x)
y_bar = mean(y)
x_bar * y_bar * 6
nominator_B = sum(x*y)
B = (-0.667)/((sum(x^2)*6) - (mean(x)^2*6))
A = y_bar - B*x_bar
A

get_value = function(x, y){
  return(x*B + A)
}
y_hat = get_value(x,y)
error = y - y_hat
error_sqr = error^2

SSR = sum(error_sqr)
RMS = SSR/(6-2)
RMS
S_xx = sum(x^2) - 6*x_bar^2
t = B/(sqrt(RMS/S_xx))
t
quantile_97.5 = qt(0.975, df = 4)
quantile_97.5
# degree of freedom = 5
# alpha  = 0.05
# t_critical is -2.570582 and 
# since our t value is -0.008307, we fail to reject

