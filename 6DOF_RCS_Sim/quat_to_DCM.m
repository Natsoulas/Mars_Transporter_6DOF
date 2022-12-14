function DCM_out = quat_to_DCM(q)
% Converts quaternion to direction cosine matrix..
% Assumes scalar is the last component of quaternion

DCM_out = [q(4)^2+q(1)^2-q(2)^2-q(3)^2,...
           2*(q(1)*q(2) - q(3)*q(4)),...
           2*(q(1)*q(3) + q(2)*q(4));...
           2*(q(1)*q(2) + q(3)*q(4)),...
           q(4)^2-q(1)^2+q(2)^2-q(3)^2,...
           2*(q(2)*q(3) - q(1)*q(4));...
           2*(q(1)*q(3) - q(2)*q(4)),...
           2*(q(2)*q(3) + q(1)*q(4)),...
           q(4)^2-q(1)^2-q(2)^2+q(3)^2];

end